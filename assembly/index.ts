//import { console } from 'as-console'

export function sleep(ms: i64): void {

  const target = Date.now() + ms

  while (target > Date.now()) { }

}

export function sleepCallback(callback: () => void, ms: i64): void {

  const target = Date.now() + ms

  while (target > Date.now()) { }

  callback()

}
/*
export function test(): void {

  console.log('Starting sleep for one second.')

  const start = Date.now()

  const result = Date.now() - start

  console.log('Slept for one second.')

  console.log('Total Time: ' + result.toString() + 'ms')

}*/